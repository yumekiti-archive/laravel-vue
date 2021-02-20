<template>
    <div>
        <ul class="nav nav-tabs">
            <li class="nav-item" v-for="(link,index) in links" :key="index">
                <router-link :to="link.path">
                    <span :class="{active:index === isActive}" class="nav-link" @click="change(index)">{{ link.path }}</span>
                </router-link>
            </li>
        </ul>
    </div>
</template>

<script>
    export default {
        name:"head",
        data() {
            return{
                links:[
                    {path:"home"},
                    {path:"todo"}
                ],

                isActive: 0,
            }
        },
        methods:{
            change: function(num){
                this.isActive = num
            }
        }
    }
</script>