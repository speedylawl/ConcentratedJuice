{
    //Daca se intalneste cu wave-ul, primeste damage si incepe un knockback + incepe perioada de imunitate
    if(place_meeting(x, y, obj_wave) && immune == 0){
        hp -= 1;
        immune = 1;
        immune_time = -1;
        speed = 20;
        direction = obj_player.dir;
    }
    //Incepe perioada de imunitate
    if (immune == 1){
        ++immune_time;
    }
    //Se termina perioada de imunitate
    if (immune_time == 12){
        immune = 0;
    }
}
