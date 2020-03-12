@extends("layout.plantilla")

@section('title', 'InterTienda')


@section('contenido')

    <!--QUIENES SOMOS-->
{{--    <div class="jumbotron">
        <h1 class="display-4">HOME- QUIENES SOMOS</h1>

        <hr class="my-4">
        <p>Bienvenidos al Círculo Privado de Compra-Venta de Artículos.</p>
        <p>Tenemos algo que vender, quizá mi compañero de oficina o de la oficina de al lado está buscando justo lo mismo, sin gastos de envíos ni comisiones. Conociendo a quien nos lo vende así nace InterTienda, un círculo de transacciones de productos dentro de tu ámbito de trabajo.</p>
        <p>¿Cómo acceder? Sencillo, te registrás y un administrador valida que pertenecés a la empresa, luego de ésto te llega el email y ya puedes publicar y ver los productos.</p>

    </div>--}}

    <!--QUIENES SOMOS-->

    <div class="container-fluid ">

        <!-- CARDS DE PRODUCTOS-->
        <div class="container container-fluid col-9 ">


            <div class="row  mt-4 mb-4 d-flex  justify-content-center justify-content-md-end ">

        @foreach($categorias as $categoria)

                <div class="col-lg-3 col-sm-12 col-md-6 mb-4 ">
                    <div class="card" style="width: 18rem;">
                        <img src="{{ asset('images/categorias') }}/{{$categoria->catImagen}}" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">{{$categoria->catNombre}}</h5>
                            <p class="card-text">{{$categoria->catDescripcion}}</p>
                            <a href="cat_tecno" class="btn btn-primary">Ir</a>
                        </div>
                    </div>
                </div>
            @endforeach
            </div>
        </div>
        <!-- CARDS -->
    </div>

    <!-- CARRUSEL -->

        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100 " src="img/imagen-inicio_01.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="img/imagen-inicio_02.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="img/imagen-inicio_03.jpg" alt="Third slide">
                </div>
            </div>
        </div>


        <!-- CARRUSEL -->


@endsection

