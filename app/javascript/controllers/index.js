// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import AnswerCompareController from "./answer_compare_controller"
application.register("answer-compare", AnswerCompareController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import PopoverController from "./popover_controller"
application.register("popover", PopoverController)

import TimerController from "./timer_controller"
application.register("timer", TimerController)
