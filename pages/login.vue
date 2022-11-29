<template>
    <div class="login-wrapper">
        <div class="login">
            <div class="login-title">
                <h4 class="login-title__text">ВХОД В СИСТЕМУ</h4>
                <span>Вас приветствует Веб-сервис ГИСАНДА http://81.29.133.26:81</span>
            </div>
            <div class="row">
                <div class="card white">
                    <div class="card-content">
                        <h6 class="card__title grey-text">Для продолжения работы введите свои учетные данные:</h6>
                        <form @submit.prevent>
                            <div>
                                <label class="login-label" for="login-name"><b>Имя пользователя</b></label>
                                <input 
                                    id="login-name"
                                    v-model="loginForm.login"
                                    type="text"
                                    name="login-name"
                                    placeholder="Логин"
                                >
                            </div>
                            <div>
                                <label class="login-label" for="password"><b>Пароль</b></label>
                                <label class="login-label_validate" for="password"><b>{{validate}}</b></label>
                                <input
                                    id="password"
                                    v-model="loginForm.password"
                                    type="password"
                                    name="password"
                                    placeholder="Пароль"
                                    @focus="focused=true"
                                    @blur="focused=false"
                                    @change="onFocus"
                                >
                            </div>
                        </form>
                    </div>
                    <div class="login-button">
                        <a class="waves-effect waves-light btn">Войти</a>
                    </div>
                </div>
            </div>
        </div>
    </div>    
</template>

<script>
    export default {
        layout: 'loginLayout',
        data () {
            return {
                loginForm: {
                    login: '',
                    password: ''
                },
                focused: {
                    type: Boolean,
                    default: false
                },
                validate: ""
            }
        },
        methods: {
            onFocus(focused) {
                if(focused.target._value.length<6){
                    this.loginForm.password = ""
                    this.validate = 'Пароль должен содержать не менее 6 символов'

                }
                if(focused.target._value.length>=6){
                    this.validate = ''
                }
            },
        },
       
    }
</script>

<style scoped>
    .login-wrapper {
        margin-top: 50px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .login {
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
    }
    .row {
        max-width: 500px;
        min-height: 400px;
    }
    .card {
        margin-top: 50px;
        box-sizing: border-box;
        padding: 15px;
    }
    .card-content {
        box-sizing: border-box;
        padding: 5px 24px 5px 24px;
    }
    .login-label {
        color: black;
    }

    .login-button {
        padding: 0px 24px
    }
    .card__title {
        font-size: 14px;
        padding-bottom: 20px;
    }
    .login-title__text {	
        color: #8bc34a;											
        text-shadow: 1px 1px 1px #01579b;
    }
    .login-label_none{
        display: none;
    }
    .login-label_validate {
        display: block;
        color: red
    }
</style>