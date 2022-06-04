(define (problem ai2)

    (:domain warehouse)
    
    (:objects
        loading_bay room_o1 room_o2 room_o3 room_o4 room_o5 room_o6 - PL
        object_1 object_2 object_3 object_4 object_5 object_6 - OB
        mover_1 mover_2 - MV
        loader - LD
    )
    
    (:init
        (not (fragile object_1)) (fragile object_2)
        (fragile object_3) (fragile object_4)
        (fragile object_5) (not (fragile object_6))
        (not (loaded object_3)) (not (loaded object_4))
        (not (loaded object_2)) (not (loaded object_5))
        (not (loaded object_1)) (not (loaded object_6))
        ; The robots are initially in room_loader
        (at_robby mover_1 loading_bay)
        (at_robby mover_2 loading_bay)
        (at_loader loader loading_bay)
        ; The grippers are empty
        (free mover_1) 
        (free mover_2)
        (ready loader)
        ; The grippers are different
        (different mover_1 mover_2)
        ; The objects are placed inside room 2 and room 3
        (at_object object_1 room_o1) (at_object object_2 room_o2)
        (at_object object_3 room_o3) (at_object object_4 room_o4)
        (at_object object_5 room_o5) (at_object object_6 room_o6)
        (empty_bay loading_bay) (not (empty_bay room_o1))
        (not (empty_bay room_o2)) (not (empty_bay room_o3))
        (not (empty_bay room_o4)) (not (empty_bay room_o5))
        (not (empty_bay room_o6))
        (= (time) 0)
        (= (distance loading_bay room_o1) 20)
        (= (distance loading_bay room_o2) 20)
        (= (distance loading_bay room_o3) 10)
        (= (distance loading_bay room_o4) 20)
        (= (distance loading_bay room_o5) 30)
        (= (distance loading_bay room_o6) 10)
        (= (distance room_o1 loading_bay) 20)
        (= (distance room_o2 loading_bay) 20)
        (= (distance room_o3 loading_bay) 10)
        (= (distance room_o4 loading_bay) 20)
        (= (distance room_o5 loading_bay) 30)
        (= (distance room_o6 loading_bay) 10)
        (= (mass object_1) 30)
        (= (mass object_2) 20)
        (= (mass object_3) 30)
        (= (mass object_4) 20)
        (= (mass object_5) 30)
        (= (mass object_6) 20) 
 
    )

    (:goal
        (and (loaded object_1) (loaded object_2)
             (loaded object_3) (loaded object_4)
             (loaded object_5) (loaded object_6))
    )

(:metric 

minimize  (time)
        
    )
    )
)