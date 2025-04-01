(define (domain abstract_mdp)
    (:requirements :strips)

    (:predicates
        (f1_2_6)
        (f2_2_4)
        (f2_2_6)
        (f1_0_1)
        (f2_2_5)
        (f2_1_1)
        (f2_2_7)
        (f1_1_1)
        (f2_0_1)
        (f1_2_5)
        (f1_2_7)
        (f1_2_4))

(:action d1_up_0
    :precondition (and (f1_0_1) (f2_0_1))
    :effect (and (f2_2_4) (not (f2_0_1))))

(:action d0_up_1
    :precondition (and (f1_0_1) (f2_0_1))
    :effect (and (f1_2_7) (not (f1_0_1))))

(:action d1_down_2
    :precondition (and (f1_1_1) (f2_1_1))
    :effect (and (f2_2_6) (not (f2_1_1))))

(:action d0_down_3
    :precondition (and (f1_1_1) (f2_1_1))
    :effect (and (f1_2_4) (not (f1_1_1))))

(:action d0_up_4
    :precondition (and (f1_0_1) (f2_1_1))
    :effect (and (f1_2_7) (not (f1_0_1))))

(:action d1_down_5
    :precondition (and (f1_0_1) (f2_1_1))
    :effect (and (f2_2_6) (not (f2_1_1))))

(:action d1_up_6
    :precondition (and (f1_1_1) (f2_0_1))
    :effect (and (f2_2_4) (not (f2_0_1))))

(:action d0_down_7
    :precondition (and (f1_1_1) (f2_0_1))
    :effect (and (f1_2_4) (not (f1_1_1))))

(:action d1_down_8
    :precondition (and (f1_2_7) (f2_1_1))
    :effect (and (f2_2_6) (not (f2_1_1))))

(:action d0_up_9
    :precondition (and (f1_2_7) (f2_1_1))
    :effect (and (f1_2_5) (not (f1_2_7))))

(:action d0_down_10
    :precondition (and (f1_2_7) (f2_1_1))
    :effect (and (f1_0_1) (not (f1_2_7))))

(:action d1_down_11
    :precondition (and (f1_2_6) (f2_1_1))
    :effect (and (f2_2_6) (not (f2_1_1))))

(:action d0_up_12
    :precondition (and (f1_2_6) (f2_1_1))
    :effect (and (f1_2_4) (not (f1_2_6))))

(:action d0_down_13
    :precondition (and (f1_2_6) (f2_1_1))
    :effect (and (f1_2_5) (not (f1_2_6))))

(:action d0_down_14
    :precondition (and (f1_2_6) (f2_0_1))
    :effect (and (f1_2_5) (not (f1_2_6))))

(:action d0_up_15
    :precondition (and (f1_2_6) (f2_0_1))
    :effect (and (f1_2_4) (not (f1_2_6))))

(:action d1_up_16
    :precondition (and (f1_2_6) (f2_0_1))
    :effect (and (f2_2_4) (not (f2_0_1))))

(:action d0_down_17
    :precondition (and (f1_2_7) (f2_0_1))
    :effect (and (f1_0_1) (not (f1_2_7))))

(:action d0_up_18
    :precondition (and (f1_2_7) (f2_0_1))
    :effect (and (f1_2_5) (not (f1_2_7))))

(:action d1_up_19
    :precondition (and (f1_2_7) (f2_0_1))
    :effect (and (f2_2_4) (not (f2_0_1))))

(:action d1_down_20
    :precondition (and (f1_0_1) (f2_2_4))
    :effect (and (f2_0_1) (not (f2_2_4))))

(:action d0_up_21
    :precondition (and (f1_0_1) (f2_2_4))
    :effect (and (f1_2_7) (not (f1_0_1))))

(:action d1_up_22
    :precondition (and (f1_0_1) (f2_2_4))
    :effect (and (f2_2_7) (not (f2_2_4))))

(:action d1_down_23
    :precondition (and (f1_0_1) (f2_2_5))
    :effect (and (f2_2_7) (not (f2_2_5))))

(:action d0_up_24
    :precondition (and (f1_0_1) (f2_2_5))
    :effect (and (f1_2_7) (not (f1_0_1))))

(:action d1_up_25
    :precondition (and (f1_0_1) (f2_2_5))
    :effect (and (f2_2_6) (not (f2_2_5))))

(:action d1_down_26
    :precondition (and (f1_1_1) (f2_2_4))
    :effect (and (f2_0_1) (not (f2_2_4))))

(:action d0_down_27
    :precondition (and (f1_1_1) (f2_2_4))
    :effect (and (f1_2_4) (not (f1_1_1))))

(:action d1_up_28
    :precondition (and (f1_1_1) (f2_2_4))
    :effect (and (f2_2_7) (not (f2_2_4))))

(:action d1_down_29
    :precondition (and (f1_1_1) (f2_2_5))
    :effect (and (f2_2_7) (not (f2_2_5))))

(:action d0_down_30
    :precondition (and (f1_1_1) (f2_2_5))
    :effect (and (f1_2_4) (not (f1_1_1))))

(:action d1_up_31
    :precondition (and (f1_1_1) (f2_2_5))
    :effect (and (f2_2_6) (not (f2_2_5))))

(:action d0_up_32
    :precondition (and (f1_2_7) (f2_2_5))
    :effect (and (f1_2_5) (not (f1_2_7))))

(:action d1_up_33
    :precondition (and (f1_2_7) (f2_2_5))
    :effect (and (f2_2_6) (not (f2_2_5))))

(:action d0_down_34
    :precondition (and (f1_2_7) (f2_2_5))
    :effect (and (f1_0_1) (not (f1_2_7))))

(:action d1_down_35
    :precondition (and (f1_2_7) (f2_2_5))
    :effect (and (f2_2_7) (not (f2_2_5))))

(:action d0_up_36
    :precondition (and (f1_2_7) (f2_2_4))
    :effect (and (f1_2_5) (not (f1_2_7))))

(:action d1_up_37
    :precondition (and (f1_2_7) (f2_2_4))
    :effect (and (f2_2_7) (not (f2_2_4))))

(:action d0_down_38
    :precondition (and (f1_2_7) (f2_2_4))
    :effect (and (f1_0_1) (not (f1_2_7))))

(:action d1_down_39
    :precondition (and (f1_2_7) (f2_2_4))
    :effect (and (f2_0_1) (not (f2_2_4))))

(:action d0_up_40
    :precondition (and (f1_2_6) (f2_2_4))
    :effect (and (f1_2_4) (not (f1_2_6))))

(:action d1_up_41
    :precondition (and (f1_2_6) (f2_2_4))
    :effect (and (f2_2_7) (not (f2_2_4))))

(:action d0_down_42
    :precondition (and (f1_2_6) (f2_2_4))
    :effect (and (f1_2_5) (not (f1_2_6))))

(:action d1_down_43
    :precondition (and (f1_2_6) (f2_2_4))
    :effect (and (f2_0_1) (not (f2_2_4))))

(:action d0_up_44
    :precondition (and (f1_2_6) (f2_2_5))
    :effect (and (f1_2_4) (not (f1_2_6))))

(:action d1_up_45
    :precondition (and (f1_2_6) (f2_2_5))
    :effect (and (f2_2_6) (not (f2_2_5))))

(:action d0_down_46
    :precondition (and (f1_2_6) (f2_2_5))
    :effect (and (f1_2_5) (not (f1_2_6))))

(:action d1_down_47
    :precondition (and (f1_2_6) (f2_2_5))
    :effect (and (f2_2_7) (not (f2_2_5))))

(:action d1_down_48
    :precondition (and (f1_2_5) (f2_1_1))
    :effect (and (f2_2_6) (not (f2_1_1))))

(:action d0_up_49
    :precondition (and (f1_2_5) (f2_1_1))
    :effect (and (f1_2_6) (not (f1_2_5))))

(:action d0_down_50
    :precondition (and (f1_2_5) (f2_1_1))
    :effect (and (f1_2_7) (not (f1_2_5))))

(:action d1_down_51
    :precondition (and (f1_2_4) (f2_1_1))
    :effect (and (f2_2_6) (not (f2_1_1))))

(:action d0_up_52
    :precondition (and (f1_2_4) (f2_1_1))
    :effect (and (f1_1_1) (not (f1_2_4))))

(:action d0_down_53
    :precondition (and (f1_2_4) (f2_1_1))
    :effect (and (f1_2_6) (not (f1_2_4))))

(:action d0_down_54
    :precondition (and (f1_2_4) (f2_0_1))
    :effect (and (f1_2_6) (not (f1_2_4))))

(:action d0_up_55
    :precondition (and (f1_2_4) (f2_0_1))
    :effect (and (f1_1_1) (not (f1_2_4))))

(:action d1_up_56
    :precondition (and (f1_2_4) (f2_0_1))
    :effect (and (f2_2_4) (not (f2_0_1))))

(:action d0_down_57
    :precondition (and (f1_2_5) (f2_0_1))
    :effect (and (f1_2_7) (not (f1_2_5))))

(:action d0_up_58
    :precondition (and (f1_2_5) (f2_0_1))
    :effect (and (f1_2_6) (not (f1_2_5))))

(:action d1_up_59
    :precondition (and (f1_2_5) (f2_0_1))
    :effect (and (f2_2_4) (not (f2_0_1))))

(:action d0_up_60
    :precondition (and (f1_2_5) (f2_2_4))
    :effect (and (f1_2_6) (not (f1_2_5))))

(:action d1_up_61
    :precondition (and (f1_2_5) (f2_2_4))
    :effect (and (f2_2_7) (not (f2_2_4))))

(:action d0_down_62
    :precondition (and (f1_2_5) (f2_2_4))
    :effect (and (f1_2_7) (not (f1_2_5))))

(:action d1_down_63
    :precondition (and (f1_2_5) (f2_2_4))
    :effect (and (f2_0_1) (not (f2_2_4))))

(:action d0_up_64
    :precondition (and (f1_2_4) (f2_2_4))
    :effect (and (f1_1_1) (not (f1_2_4))))

(:action d1_up_65
    :precondition (and (f1_2_4) (f2_2_4))
    :effect (and (f2_2_7) (not (f2_2_4))))

(:action d0_down_66
    :precondition (and (f1_2_4) (f2_2_4))
    :effect (and (f1_2_6) (not (f1_2_4))))

(:action d1_down_67
    :precondition (and (f1_2_4) (f2_2_4))
    :effect (and (f2_0_1) (not (f2_2_4))))

(:action d0_up_68
    :precondition (and (f1_2_5) (f2_2_5))
    :effect (and (f1_2_6) (not (f1_2_5))))

(:action d1_up_69
    :precondition (and (f1_2_5) (f2_2_5))
    :effect (and (f2_2_6) (not (f2_2_5))))

(:action d0_down_70
    :precondition (and (f1_2_5) (f2_2_5))
    :effect (and (f1_2_7) (not (f1_2_5))))

(:action d1_down_71
    :precondition (and (f1_2_5) (f2_2_5))
    :effect (and (f2_2_7) (not (f2_2_5))))

(:action d0_up_72
    :precondition (and (f1_2_4) (f2_2_5))
    :effect (and (f1_1_1) (not (f1_2_4))))

(:action d1_up_73
    :precondition (and (f1_2_4) (f2_2_5))
    :effect (and (f2_2_6) (not (f2_2_5))))

(:action d0_down_74
    :precondition (and (f1_2_4) (f2_2_5))
    :effect (and (f1_2_6) (not (f1_2_4))))

(:action d1_down_75
    :precondition (and (f1_2_4) (f2_2_5))
    :effect (and (f2_2_7) (not (f2_2_5))))

(:action d1_down_76
    :precondition (and (f1_0_1) (f2_2_6))
    :effect (and (f2_2_5) (not (f2_2_6))))

(:action d0_up_77
    :precondition (and (f1_0_1) (f2_2_6))
    :effect (and (f1_2_7) (not (f1_0_1))))

(:action d1_up_78
    :precondition (and (f1_0_1) (f2_2_6))
    :effect (and (f2_1_1) (not (f2_2_6))))

(:action d1_down_79
    :precondition (and (f1_0_1) (f2_2_7))
    :effect (and (f2_2_4) (not (f2_2_7))))

(:action d0_up_80
    :precondition (and (f1_0_1) (f2_2_7))
    :effect (and (f1_2_7) (not (f1_0_1))))

(:action d1_up_81
    :precondition (and (f1_0_1) (f2_2_7))
    :effect (and (f2_2_5) (not (f2_2_7))))

(:action d1_down_82
    :precondition (and (f1_1_1) (f2_2_6))
    :effect (and (f2_2_5) (not (f2_2_6))))

(:action d0_down_83
    :precondition (and (f1_1_1) (f2_2_6))
    :effect (and (f1_2_4) (not (f1_1_1))))

(:action d1_up_84
    :precondition (and (f1_1_1) (f2_2_6))
    :effect (and (f2_1_1) (not (f2_2_6))))

(:action d1_down_85
    :precondition (and (f1_1_1) (f2_2_7))
    :effect (and (f2_2_4) (not (f2_2_7))))

(:action d0_down_86
    :precondition (and (f1_1_1) (f2_2_7))
    :effect (and (f1_2_4) (not (f1_1_1))))

(:action d1_up_87
    :precondition (and (f1_1_1) (f2_2_7))
    :effect (and (f2_2_5) (not (f2_2_7))))

(:action d0_up_88
    :precondition (and (f1_2_7) (f2_2_7))
    :effect (and (f1_2_5) (not (f1_2_7))))

(:action d1_up_89
    :precondition (and (f1_2_7) (f2_2_7))
    :effect (and (f2_2_5) (not (f2_2_7))))

(:action d0_down_90
    :precondition (and (f1_2_7) (f2_2_7))
    :effect (and (f1_0_1) (not (f1_2_7))))

(:action d1_down_91
    :precondition (and (f1_2_7) (f2_2_7))
    :effect (and (f2_2_4) (not (f2_2_7))))

(:action d0_up_92
    :precondition (and (f1_2_7) (f2_2_6))
    :effect (and (f1_2_5) (not (f1_2_7))))

(:action d1_up_93
    :precondition (and (f1_2_7) (f2_2_6))
    :effect (and (f2_1_1) (not (f2_2_6))))

(:action d0_down_94
    :precondition (and (f1_2_7) (f2_2_6))
    :effect (and (f1_0_1) (not (f1_2_7))))

(:action d1_down_95
    :precondition (and (f1_2_7) (f2_2_6))
    :effect (and (f2_2_5) (not (f2_2_6))))

(:action d0_up_96
    :precondition (and (f1_2_6) (f2_2_6))
    :effect (and (f1_2_4) (not (f1_2_6))))

(:action d1_up_97
    :precondition (and (f1_2_6) (f2_2_6))
    :effect (and (f2_1_1) (not (f2_2_6))))

(:action d0_down_98
    :precondition (and (f1_2_6) (f2_2_6))
    :effect (and (f1_2_5) (not (f1_2_6))))

(:action d1_down_99
    :precondition (and (f1_2_6) (f2_2_6))
    :effect (and (f2_2_5) (not (f2_2_6))))

(:action d0_up_100
    :precondition (and (f1_2_6) (f2_2_7))
    :effect (and (f1_2_4) (not (f1_2_6))))

(:action d1_up_101
    :precondition (and (f1_2_6) (f2_2_7))
    :effect (and (f2_2_5) (not (f2_2_7))))

(:action d0_down_102
    :precondition (and (f1_2_6) (f2_2_7))
    :effect (and (f1_2_5) (not (f1_2_6))))

(:action d1_down_103
    :precondition (and (f1_2_6) (f2_2_7))
    :effect (and (f2_2_4) (not (f2_2_7))))

(:action d0_up_104
    :precondition (and (f1_2_5) (f2_2_6))
    :effect (and (f1_2_6) (not (f1_2_5))))

(:action d1_up_105
    :precondition (and (f1_2_5) (f2_2_6))
    :effect (and (f2_1_1) (not (f2_2_6))))

(:action d0_down_106
    :precondition (and (f1_2_5) (f2_2_6))
    :effect (and (f1_2_7) (not (f1_2_5))))

(:action d1_down_107
    :precondition (and (f1_2_5) (f2_2_6))
    :effect (and (f2_2_5) (not (f2_2_6))))

(:action d0_up_108
    :precondition (and (f1_2_5) (f2_2_7))
    :effect (and (f1_2_6) (not (f1_2_5))))

(:action d1_up_109
    :precondition (and (f1_2_5) (f2_2_7))
    :effect (and (f2_2_5) (not (f2_2_7))))

(:action d0_down_110
    :precondition (and (f1_2_5) (f2_2_7))
    :effect (and (f1_2_7) (not (f1_2_5))))

(:action d1_down_111
    :precondition (and (f1_2_5) (f2_2_7))
    :effect (and (f2_2_4) (not (f2_2_7))))

(:action d0_up_112
    :precondition (and (f1_2_4) (f2_2_6))
    :effect (and (f1_1_1) (not (f1_2_4))))

(:action d1_up_113
    :precondition (and (f1_2_4) (f2_2_6))
    :effect (and (f2_1_1) (not (f2_2_6))))

(:action d0_down_114
    :precondition (and (f1_2_4) (f2_2_6))
    :effect (and (f1_2_6) (not (f1_2_4))))

(:action d1_down_115
    :precondition (and (f1_2_4) (f2_2_6))
    :effect (and (f2_2_5) (not (f2_2_6))))

(:action d0_up_116
    :precondition (and (f1_2_4) (f2_2_7))
    :effect (and (f1_1_1) (not (f1_2_4))))

(:action d1_up_117
    :precondition (and (f1_2_4) (f2_2_7))
    :effect (and (f2_2_5) (not (f2_2_7))))

(:action d0_down_118
    :precondition (and (f1_2_4) (f2_2_7))
    :effect (and (f1_2_6) (not (f1_2_4))))

(:action d1_down_119
    :precondition (and (f1_2_4) (f2_2_7))
    :effect (and (f2_2_4) (not (f2_2_7))))
)
