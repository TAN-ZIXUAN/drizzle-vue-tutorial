<template>
    <div>
        <div> {{activeAccount}}</div>
        <div>Balance{{activeBalance}} </div>
    </div>
</template>

<script>
    import {mapGetters} from 'vuex'

    export default {
        name: "Account",
        computed : {
            ...mapGetters('accounts', ['activeAccount', 'activeBalance']),
        },
    }
</script>

<style scoped>

</style>