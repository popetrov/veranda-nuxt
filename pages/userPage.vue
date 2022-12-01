<template>
    <div>
        <h1>Страница пользователя</h1>
        <div>Логин: {{login}}</div>
        <div>Пароль: {{password}}</div>
    </div>
</template>

<script>
    export default {
        props: ['login', 'password']
    }
</script>

<style lang="scss" scoped>

</style>