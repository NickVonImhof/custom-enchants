#special
scoreboard objectives add Carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health 
scoreboard objectives add Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add gamemode dummy

#enchantment specific
#warping
scoreboard objectives add teledistance dummy
scoreboard objectives add warping_cd dummy

#galestep
scoreboard objectives add galestep_cd dummy

#mistwalker
scoreboard objectives add noxptimer dummy

#rewind
scoreboard objectives add rewinding dummy
scoreboard objectives add rewind_tempo dummy
scoreboard objectives add prev_health dummy

#witherskull
scoreboard objectives add witherskull_cd dummy

#abyssal ray
scoreboard objectives add abyssalray_cd dummy

#celestial ray
scoreboard objectives add celestialray_cd dummy

#fulmination
scoreboard objectives add fulmination_cd dummy
scoreboard objectives add fulmination_charge dummy
scoreboard objectives add fulmination_max_charge dummy

#zephyr
scoreboard objectives add zephyr_tempo dummy

#vitalityward
scoreboard objectives add max_health dummy

# swap chest items
scoreboard objectives add success1 dummy
scoreboard objectives add success2 dummy
scoreboard objectives add success3 dummy



#xp
    # every 100 r_xp turns into 1 xp point/d_xp.
    # every 1 d_xp turns into 1 health point.
    # 100 r_xp = 1 health point.
    # d_x exists for scale AND bc of immunity timer!
scoreboard objectives add r_xp dummy
scoreboard objectives add r_cost dummy
scoreboard objectives add d_xp dummy
scoreboard objectives add xp_cost dummy
scoreboard objectives add xp_remaining dummy

#purely for display only.
scoreboard objectives add current_xp xp

# general dummy
scoreboard objectives add pressRC dummy
scoreboard objectives add recurse_depth dummy
scoreboard objectives add uuid dummy
scoreboard objectives add lifetimer dummy
scoreboard objectives add lvl dummy
scoreboard objectives add lvl_saved dummy
scoreboard objectives add delta dummy

scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
scoreboard objectives add rotX dummy
scoreboard objectives add rotY dummy
scoreboard objectives add rotZ dummy

scoreboard objectives add motX dummy
scoreboard objectives add motY dummy
scoreboard objectives add motZ dummy



say loaded