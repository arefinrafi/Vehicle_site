from django.core.paginator import Paginator
from django.shortcuts import render, redirect
from .forms import CreateUserForm, AdminUploadForm, ImageUploadForm
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from .models import User, ImageFile, Vehicle_info
from django.db.models import Q, F, Sum, Count


# Create your views here.


def home_page(request):
    if request.method == "POST":
        min_price = request.POST.get('min')
        max_price = request.POST.get('max')
        final_price = Vehicle_info.objects.filter(price__gte=min_price, price__lte=max_price)
        return render(request, 'account/home.html', {'homepanel': final_price})
    else:
        vehicle = Vehicle_info.objects.all().order_by('-id')
        paginator = Paginator(vehicle, 6)
        page_number = request.GET.get('page', 1)
        vehicle_page = paginator.get_page(page_number)
        '''paginator = Paginator(vehicle, 6)   how much vehicle show in one page that means pagination
        page = request.GET.get('page')  # pagination
        page_vehicle = paginator.get_page(page)  # pagination'''

        query = request.GET.get("q", None)  # search query
        if query is not None:
            vehicle_page = vehicle.filter(Q(brand__icontains=query) | Q(model__icontains=query) |
                                          Q(showroom_name__icontains=query) | Q(year__icontains=query))  # search query
        context = {'homepanel': vehicle_page, 'paginator': paginator, 'page_number': int(page_number)}
        return render(request, 'account/home.html', context)


def login_page(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)

        if user is not None:
            if user.is_superuser or user.is_staff:
                login(request, user)
                return redirect('super_admin')
            else:
                login(request, user)
                return redirect('admin_panel')
        else:
            messages.info(request, 'username or password is incorrect.')
    return render(request, 'account/login.html')


def register_page(request):
    form = CreateUserForm()

    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
            user = form.cleaned_data.get('username')
            messages.success(request, 'Account was created for ' + user)
            return redirect('login')
    context = {'form': form}
    return render(request, 'account/register.html', context)


def logout_page(request):
    logout(request)
    return redirect('home')


@login_required(login_url='login')
def admin_panel_page(request):
    current_user = request.user
    print(current_user.id)
    current_vehicle = request.user
    if current_user == current_vehicle:
        context = {'adminpanel': Vehicle_info.objects.filter(user=current_vehicle),
                   'showroom': Vehicle_info.objects.filter(user=current_vehicle)[:1]}
        return render(request, 'account/adminpanel.html', context)
    else:
        context = {'adminpanel': Vehicle_info.objects.all()}
        return render(request, 'account/adminpanel.html', context)


@login_required(login_url='login')
def admin_upload_page(request):  # insert data for vehicle upload table
    if request.method == 'POST':
        form = AdminUploadForm(request.POST, request.FILES)
        file_form = ImageUploadForm(request.POST, request.FILES)
        files = request.FILES.getlist('file')
        if form.is_valid() and file_form.is_valid():
            instance = form.save(commit=False)
            instance.user = request.user
            instance.save()
            for f in files:
                file_instance = ImageFile(file=f, imgID=instance)
                file_instance.save()
            messages.success(request, 'Information uploaded successfully.')
        return redirect('admin_upload')
    else:
        form = AdminUploadForm()
        file_form = ImageUploadForm()
    context = {'form': form, 'file_form': file_form}
    return render(request, 'account/adminupload.html', context)


@login_required(login_url='login')
def admin_update_page(request, id=0):  # Update data for vehicle upload table
    if request.method == 'POST':
        if id == 0:
            form = AdminUploadForm(request.POST, request.FILES)
        else:
            upload = Vehicle_info.objects.get(pk=id)
            form = AdminUploadForm(request.POST, request.FILES, instance=upload)

        if form.is_valid():
            instance = form.save(commit=False)
            instance.user = request.user
            instance.save()
            messages.success(request, 'Information Updated successfully.')
            return redirect('admin_upload')

    else:
        if id == 0:
            form = AdminUploadForm()
        else:
            upload = Vehicle_info.objects.get(pk=id)
            form = AdminUploadForm(instance=upload)
    context = {'form': form}
    return render(request, 'account/adminupload.html', context)


def admin_delete(request, id):  # Delete the Admin
    admin = Vehicle_info.objects.get(pk=id)
    admin_img = ImageFile.objects.filter(imgID=id)
    admin.delete()
    admin_img.delete()
    messages.warning(request, 'Information Deleted successfully.')
    return redirect('admin_panel')


@login_required(login_url='login')
def admin_profit_section(request):
    current_user = request.user
    current_vehicle = request.user
    if current_user == current_vehicle:
        profit = Vehicle_info.objects.filter(user=current_vehicle).annotate(
            result=F('selling') - F('purchase'))
        total_profit = Vehicle_info.objects.filter(user=current_vehicle).aggregate(
            total=Sum(F('selling') - F('purchase')))
        context = {'profits': profit, 'total_profit': total_profit}
        return render(request, 'account/profitsection.html', context)
    else:
        context = {'profits': Vehicle_info.objects.all()}
        return render(request, 'account/profitsection.html', context)

    # profits = Vehicle_info.objects.all().annotate(result=F('selling') - F('purchase'))
    # context = {'profits': profits}
    # return render(request, "account/profitsection.html", context)


def view_details_page(request, pk):
    views = Vehicle_info.objects.get(pk=pk)
    view = ImageFile.objects.filter(imgID=pk)
    context = {'views': views, 'view': view}
    return render(request, 'account/viewdetails.html', context)


@login_required(login_url='login')
def super_admin(request):
    superadmin = User.objects.all().annotate(num_vehicle=Count('vehicle_info'))
    context = {'superadmin': superadmin.order_by('id')}
    return render(request, 'account/superadmin.html', context)


def super_admin_delete(request, id):  # Delete the Admin
    delete_admin = User.objects.get(pk=id)
    delete_admin.delete()
    messages.warning(request, 'Information Deleted successfully.')
    return redirect('super_admin')


def bike_page(request):
    context = {'bikes': Vehicle_info.objects.filter(v_type='1')}
    return render(request, 'category/bikepage.html', context)


def bus_page(request):
    context = {'buses': Vehicle_info.objects.filter(v_type='2')}
    return render(request, 'category/buspage.html', context)


def car_page(request):
    context = {'cars': Vehicle_info.objects.filter(v_type='3').order_by('?')}
    return render(request, 'category/carpage.html', context)


def truck_page(request):
    context = {'trucks': Vehicle_info.objects.filter(v_type='4')}
    return render(request, 'category/truckpage.html', context)


def others_page(request):
    context = {'others': Vehicle_info.objects.filter(v_type='1')}
    return render(request, 'category/otherspage.html', context)


def bugatti_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Buggati") | Q(brand="buggatti") | Q(brand="Bugatti")
                                                     | Q(brand="bugatti"))}
    return render(request, 'brands/car/bugatti.html', context)


def lamborghini_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Lamborghini") | Q(brand="lamborghini"))}
    return render(request, 'brands/car/lamborghini.html', context)


def aston_martin_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Aston Martin") | Q(brand="aston martin"))}
    return render(request, 'brands/car/astonmartin.html', context)


def audipage(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Audi") | Q(brand="audi"))}
    return render(request, 'brands/car/audi.html', context)


def bentley_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Bentley") | Q(brand="bentley"))}
    return render(request, 'brands/car/bentley.html', context)


def bmw_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="BMW") | Q(brand="bmw"))}
    return render(request, 'brands/car/bmw.html', context)


def cadillac_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Cadillac") | Q(brand="cadillac"))}
    return render(request, 'brands/car/cadillac.html', context)


def chevrolet_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Chevrolet") | Q(brand="chevrolet"))}
    return render(request, 'brands/car/chevrolet.html', context)


def ferrari_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Ferrari") | Q(brand="ferrari"))}
    return render(request, 'brands/car/ferrari.html', context)


def ford_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Ford") | Q(brand="ford"))}
    return render(request, 'brands/car/ford.html', context)


def honda_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Honda") | Q(brand="honda"))}
    return render(request, 'brands/car/honda.html', context)


def hyundai_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Hyundai") | Q(brand="hyundai"))}
    return render(request, 'brands/car/hyundai.html', context)


def jaguar_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Jaguar") | Q(brand="jaguar"))}
    return render(request, 'brands/car/jaguar.html', context)


def jeep_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Jeep") | Q(brand="jeep"))}
    return render(request, 'brands/car/jeep.html', context)


def land_rover_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Land Rover") | Q(brand="land rover"))}
    return render(request, 'brands/car/landrover.html', context)


def lexus_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Lexus") | Q(brand="lexus"))}
    return render(request, 'brands/car/lexus.html', context)


def maclaren_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Maclaren") | Q(brand="maclaren"))}
    return render(request, 'brands/car/maclaren.html', context)


def mercedes_page(request):
    context = {'brands': Vehicle_info.objects.filter(
        Q(brand="Mercedes Benz") | Q(brand="mercedes benz") | Q(brand="Marcedes Benz"))}
    return render(request, 'brands/car/mercedes.html', context)


def mazda_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Mazda") | Q(brand="mazda"))}
    return render(request, 'brands/car/mazda.html', context)


def maserati_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Maserati") | Q(brand="maserati"))}
    return render(request, 'brands/car/maserati.html', context)


def nissan_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Nissan") | Q(brand="nissan"))}
    return render(request, 'brands/car/nissan.html', context)


def porsche_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Porsche") | Q(brand="porsche"))}
    return render(request, 'brands/car/porsche.html', context)


def rollsroyce_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Rolls Royce") | Q(brand="rolls royce"))}
    return render(request, 'brands/car/rollsroyce.html', context)


def toyota_page(request):
    context = {'brands': Vehicle_info.objects.filter(Q(brand="Toyota") | Q(brand="toyota"))}
    return render(request, 'brands/car/toyota.html', context)


def one_twenty_lakh(request):
    ranges = Vehicle_info.objects.filter(price__gte=100000, price__lte=2000000)
    context = {'ranges': ranges}
    return render(request, 'brands/price/1-20lakhs.html', context)


def twenty_fourty_lakh(request):
    ranges = Vehicle_info.objects.filter(price__gte=2000000, price__lte=4000000)
    context = {'ranges': ranges}
    return render(request, 'brands/price/20-40lakhs.html', context)


def fourty_sixty_lakh(request):
    ranges = Vehicle_info.objects.filter(price__gte=4000000, price__lte=6000000)
    context = {'ranges': ranges}
    return render(request, 'brands/price/40-60lakhs.html', context)


def sixty_eighty_lakh(request):
    ranges = Vehicle_info.objects.filter(price__gte=6000000, price__lte=8000000)
    context = {'ranges': ranges}
    return render(request, 'brands/price/60-80lakhs.html', context)


def eighty_onehundred_lakh(request):
    ranges = Vehicle_info.objects.filter(price__gte=8000000, price__lte=10000000)
    context = {'ranges': ranges}
    return render(request, 'brands/price/80-100lakhs.html', context)


def one_crore_above(request):
    ranges = Vehicle_info.objects.filter(price__gte=10000000)
    context = {'ranges': ranges}
    return render(request, 'brands/price/1croreabove.html', context)
