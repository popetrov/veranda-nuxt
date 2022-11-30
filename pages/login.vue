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
                                <label 
                                    class="login-label" 
                                    for="login-name"
                                >
                                    <b>Имя пользователя</b>
                                </label>
                                <input 
                                    id="login-name"
                                    v-model="loginForm.login"
                                    type="text"
                                    name="login-name"
                                    placeholder="Логин"
                                    @change="checkValidateLogin"
                                >
                            </div>
                            <div>
                                <label
                                    v-if="validatePassword==='пароль'" 
                                    class="login-label" 
                                    for="password"
                                >
                                    <b>Пароль</b>
                                </label>
                                <label
                                    v-else-if="validatePassword==='Пароль должен содержать не менее 6 символов'"
                                    class="login-label_no-validate"  
                                    for="password">
                                        <b>Пароль должен содержать не менее 6 символов</b>
                                </label>
                                <label
                                    v-else-if="validatePassword==='Это надежный пароль'"
                                    class="login-label_validate"  
                                    for="password">
                                        <b><i class="material-icons">check</i></b>
                                </label>
                                <input
                                    id="password"
                                    v-model="loginForm.password"
                                    type="password"
                                    name="password"
                                    placeholder="Пароль"
                                    @change="checkValidatePassword"
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
                validatePassword: 'пароль'
            }
        },
        methods: {
            checkValidatePassword(data) {
                if(data.target._value.length < 6){
                    this.loginForm.password = ""
                    this.validatePassword = 'Пароль должен содержать не менее 6 символов'
                    return
                }
                this.validatePassword = 'Это надежный пароль'
            },
            checkValidateLogin(data) {
                if(data.target._value){
                    return console.log()
                }
                console.log(data.target._value.length)
            }
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
    .login-label_no-validate {
        display: block;
        color: red
    }
    .login-label_validate {
        display: block;
        color: green
    }
</style>