<template>
    <p>
        <strong>Stored Data</strong>:{{contractData}}
    </p>
</template>

<script>
    import {mapGetters} from 'vuex'
    const args = {
        contractName: 'SimpleStorage',
        method: 'storedData',
        methodArgs: '',  //method='storedData' does not need take any arguments
    }
    export default {
        name: "Simple",
        computed: {
            //mapGetters like a filter. only gives state or data that we specified.
            ...mapGetters('contracts',['getContractData']), //namespace , getters   //using getContractData in contracts(from drizzle-vue)
            contractData() {  //get contract with those filters
                // -> get specific data of method 'storedData' in  contract 'SingleStorage'
                return this.getContractData({
                    contract: args.contractName,
                    method: args.method
                });
            }
        },
        created() { //dispatch events or actions when created
            this.$store.dispatch('drizzle/REGISTER_CONTRACT', args);
            //dispatch or trigger 'drizzle/REGISTER_CONTRACT' with our defined arguments

        },

    }
</script>

<style scoped>

</style>