#!/usr/bin/python3
from tkinter import *

master = Tk()


def callback_stand():
    print("stand")


def callback_lay():
    print("lay")


def callback_sit():
    print("sit")


def callback_givePaw():
    print("give paw")


def callback_freePose():
    """send free defined pose to ROS node"""
    # first we check for valid inputs
    j0 = int(edt_j0.get())


if __name__ == '__main__':

    var_speed = IntVar()
    var_speed.set(5)

    master.geometry("600x550")
    master.title("SpotMicro simple ROS GUI")

    logo_joint = PhotoImage(file="Joints.png")
    lbl_image1 = Label(master, image=logo_joint)
    lbl_image1.place(x=0, y=0, width=600, height=230)

    group_pose = LabelFrame(master, text="defined poses")
    group_pose.place(x=10, y=240, width=580, height=130)
    btn_stand = Button(group_pose, text="stand", command=callback_stand)
    btn_stand.place(x=30, y=10, width=100, height=25)
    btn_lay = Button(group_pose, text="lay", command=callback_lay)
    btn_lay.place(x=160, y=10, width=100, height=25)
    btn_sit = Button(group_pose, text="sit", command=callback_sit)
    btn_sit.place(x=290, y=10, width=100, height=25)
    btn_givePaw = Button(group_pose, text="give paw", command=callback_givePaw)
    btn_givePaw.place(x=420, y=10, width=100, height=25)
    Radiobutton(group_pose, text="reach pose in 1 sec", variable=var_speed,value=1).place(x=50, y=50, width=150, height=15)
    Radiobutton(group_pose, text="reach pose in 2 sec", variable=var_speed,value=2).place(x=50, y=70, width=150, height=15)
    Radiobutton(group_pose, text="reach pose in 5 sec", variable=var_speed,value=5).place(x=50, y=90, width=150, height=15)

    group_freepose = LabelFrame(master, text="free pose definition")
    group_freepose.place(x=10, y=390, width=580, height=130)
    group_front_left = LabelFrame(group_freepose, text="front left leg")
    group_front_left.place(x=20, y=10, width=100, height=90)
    lbl_j0 = Label(group_front_left, text="J0")
    lbl_j0.place(x=10, y=10, width=20, height=15)
    lbl_j1 = Label(group_front_left, text="J1")
    lbl_j1.place(x=10, y=30, width=20, height=15)
    lbl_j2 = Label(group_front_left, text="J2")
    lbl_j2.place(x=10, y=50, width=20, height=15)
    edt_j0 = Entry(group_front_left)
    edt_j0.place(x=40, y=10, width=50, height=15)
    edt_j1 = Entry(group_front_left)
    edt_j1.place(x=40, y=30, width=50, height=15)
    edt_j2 = Entry(group_front_left)
    edt_j2.place(x=40, y=50, width=50, height=15)

    group_front_right = LabelFrame(group_freepose, text="front right leg")
    group_front_right.place(x=125, y=10, width=100, height=90)
    lbl_j3 = Label(group_front_right, text="J3")
    lbl_j3.place(x=10, y=10, width=20, height=15)
    lbl_j4 = Label(group_front_right, text="J4")
    lbl_j4.place(x=10, y=30, width=20, height=15)
    lbl_j5 = Label(group_front_right, text="J5")
    lbl_j5.place(x=10, y=50, width=20, height=15)
    edt_j3 = Entry(group_front_right)
    edt_j3.place(x=40, y=10, width=50, height=15)
    edt_j4 = Entry(group_front_right)
    edt_j4.place(x=40, y=30, width=50, height=15)
    edt_j5 = Entry(group_front_right)
    edt_j5.place(x=40, y=50, width=50, height=15)

    group_back_left = LabelFrame(group_freepose, text="back left leg")
    group_back_left.place(x=230, y=10, width=100, height=90)
    lbl_j6 = Label(group_back_left, text="J6")
    lbl_j6.place(x=10, y=10, width=20, height=15)
    lbl_j7 = Label(group_back_left, text="J7")
    lbl_j7.place(x=10, y=30, width=20, height=15)
    lbl_j8 = Label(group_back_left, text="J8")
    lbl_j8.place(x=10, y=50, width=20, height=15)
    edt_j6 = Entry(group_back_left)
    edt_j6.place(x=40, y=10, width=50, height=15)
    edt_j7 = Entry(group_back_left)
    edt_j7.place(x=40, y=30, width=50, height=15)
    edt_j8 = Entry(group_back_left)
    edt_j8.place(x=40, y=50, width=50, height=15)

    group_back_right = LabelFrame(group_freepose, text="back right leg")
    group_back_right.place(x=335, y=10, width=100, height=90)
    lbl_j9 = Label(group_back_right, text="J9")
    lbl_j9.place(x=10, y=10, width=20, height=15)
    lbl_j10 = Label(group_back_right, text="J10")
    lbl_j10.place(x=10, y=30, width=20, height=15)
    lbl_j11 = Label(group_back_right, text="J11")
    lbl_j11.place(x=10, y=50, width=20, height=15)
    edt_j9 = Entry(group_back_right)
    edt_j9.place(x=40, y=10, width=50, height=15)
    edt_j10 = Entry(group_back_right)
    edt_j10.place(x=40, y=30, width=50, height=15)
    edt_j11 = Entry(group_back_right)
    edt_j11.place(x=40, y=50, width=50, height=15)

    lbl_speed = Label(group_freepose, text="time s")
    lbl_speed.place(x=450, y=20, width=50, height=15)
    edt_speed = Entry(group_freepose)
    edt_speed.place(x=500, y=20, width=50, height=20)
    btn_freePose = Button(group_freepose, text="send", command=callback_freePose)
    btn_freePose.place(x=460, y=60, width=110, height=25)

    master.mainloop()
