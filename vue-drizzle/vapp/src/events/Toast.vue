<template>
    <section></section>
</template>

<script>
    import Toasted from 'vue-toasted';
    import Vue from 'vue'

    Vue.use(Toasted)
    export default {
        name: "Toast",
        mounted() {
            const  contractEventHandler = ({contractName, eventName, data}) => {
                // if(eventName === 'DataChanged') {
                //     //trigger something
                // }//# if you want to specify a event when listening to more than one event
                const display = `${contractName}(${eventName}): ${data.newValue}, ${data.date}`;
                const  subOptions = { duration: 3000};  //events popup lasts 3 sec
                this.$toasted.show(display, subOptions);
            };

            this.$drizzleEvents.$on('drizzle/contractEvent', payload => {
                contractEventHandler(payload);
            });
        }
    }
</script>

<style scoped>

</style>