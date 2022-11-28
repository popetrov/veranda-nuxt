<template>
    <nav>
        <div class="nav-wrapper grey darken-4">
            <NuxtLink to="/" class="brand-logo">
                <strong>ГИС<p class="logo-text__green">АНДА</p></strong></NuxtLink>
        </div>
    </nav>
</template>

<script>
    export default {
        
    }
</script>

<style  scoped>
        nav {
        max-height: 50px;
    }
    .brand-logo {
        margin-left: 10px;
        margin-top: -10px;
    }
    .login-button{
        margin-top: -10px;
    }
    .logo-text__green {
        display: inline;
        color: #8bc34a;
    }
</style>