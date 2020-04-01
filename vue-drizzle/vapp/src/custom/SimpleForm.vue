<template>
    <form>
        <input
            v-model="value"
            type="text"
            placeholder="Value"/>
        <button @click.prevent="onSubmit">submit</button>
<!--  v-model two-way bind on form input;      prevent is to prevent the browser default behavior-->
    </form>

    
</template>

<script>
    import {mapGetters} from 'vuex'
    export default {
        name: "SimpleForm",
        computed: {
            ...mapGetters('drizzle', ['drizzleInstance'])
        },
        methods: {
            onSubmit() {
                this.drizzleInstance
                .contracts['SimpleStorage']
                .methods['set']
                .cacheSend(this.value)  //send transaction to this smart contract //value is from input
            },
        },
        data:() => ({
          value:''  //value is defined in the input once the button is clicked
        }),
    }
</script>

<style scoped>

</style>