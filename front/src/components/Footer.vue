<template>
<div class="footer">
    <footer class="page-footer font-small stylish-color-dark pt-4 mt-5">

    <div class="container-primary text-center text-md-left gray">

        <div class="row">

        <div class="col-md-4 mx-auto">
            
   <router-link class="router-link" :to="{name: 'home'}">
        <a  href="/"><img src="../assets/isotipo-negativo.png" alt="simbolo de marca"></a> 
       <a class="a-logo" href="/"><h1 class="h1-logotipo"> CoviData</h1></a> 
   </router-link>

        </div>
        <hr class="clearfix w-100 d-md-none">

        <div class="col-md-2 mx-auto">

            <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Get started</h5>

            <ul class="list-unstyled">
            <li>
                <a href="#"><p>Home</p></a>
            </li>
            <li>
                <a href="#"><p>Sign up</p></a>
            </li>
            <li>
                <a href="#"><p>Downloads</p></a>
            </li>
            </ul>

        </div>
        <hr class="clearfix w-100 d-md-none">

        <div class="col-md-2 mx-auto">

            <h5 class="font-weight-bold text-uppercase mt-3 mb-4">About us</h5>

            <ul class="list-unstyled">
            <li>
                <a href="#"><p>Company Information</p></a>
            </li>
            <li>
                <a href="#"><p>Contact Us</p></a>
            </li>
            <li>
                <a href="#"><p>Rewiws</p></a>
            </li>
            </ul>

        </div>
        <hr class="clearfix w-100 d-md-none">

        <div class="col-md-2 mx-auto">

            <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Support</h5>

            <ul class="list-unstyled">
            <li>
                <a href="#"><p>FAQ</p></a>
            </li>
            <li>
                <a href="#"><p>Helps desk</p></a>
            </li>
            <li>
                <a href="#"> <p>Forums</p> </a>
            </li>
            </ul>
        </div>
        </div>

    </div>
    <div class="footer-copyright text-center py-3 gray-dark"> <span>© 2020 Copyright - Covidata</span> 
    </div>
    </footer>

  </div>
</template>

<script>
    export default {
        
    }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

.footer .gray{
    background-color: #424242;
}

.footer .gray-dark{
background-color: #212121;
}

.footer span{
  color: #ffffff;
}

.footer a{
    background: #ffffff;
}

.footer h5, .footer p{
    color: #ffffff;
}
.footer img{
    width: 160px;
    display: block;
line-height: 0;
font-size: 0
}

.footer .h1-logotipo{
    margin:0px auto;
    padding: 13%;
    color: #00c853;
    font-weight: bolder;
}

.router-link .a-logo{
    text-decoration-color: rgba(255, 255, 255, 0);
}

ul li a{
    text-decoration-color: #00c853;
}

</style>
