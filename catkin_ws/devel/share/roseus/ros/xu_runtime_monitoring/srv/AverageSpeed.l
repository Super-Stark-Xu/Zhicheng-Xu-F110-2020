;; Auto-generated. Do not edit!


(when (boundp 'xu_runtime_monitoring::AverageSpeed)
  (if (not (find-package "XU_RUNTIME_MONITORING"))
    (make-package "XU_RUNTIME_MONITORING"))
  (shadow 'AverageSpeed (find-package "XU_RUNTIME_MONITORING")))
(unless (find-package "XU_RUNTIME_MONITORING::AVERAGESPEED")
  (make-package "XU_RUNTIME_MONITORING::AVERAGESPEED"))
(unless (find-package "XU_RUNTIME_MONITORING::AVERAGESPEEDREQUEST")
  (make-package "XU_RUNTIME_MONITORING::AVERAGESPEEDREQUEST"))
(unless (find-package "XU_RUNTIME_MONITORING::AVERAGESPEEDRESPONSE")
  (make-package "XU_RUNTIME_MONITORING::AVERAGESPEEDRESPONSE"))

(in-package "ROS")





(defclass xu_runtime_monitoring::AverageSpeedRequest
  :super ros::object
  :slots (_distance _time ))

(defmethod xu_runtime_monitoring::AverageSpeedRequest
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _time (float __time))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass xu_runtime_monitoring::AverageSpeedResponse
  :super ros::object
  :slots (_ave_speed ))

(defmethod xu_runtime_monitoring::AverageSpeedResponse
  (:init
   (&key
    ((:ave_speed __ave_speed) 0.0)
    )
   (send-super :init)
   (setq _ave_speed (float __ave_speed))
   self)
  (:ave_speed
   (&optional __ave_speed)
   (if __ave_speed (setq _ave_speed __ave_speed)) _ave_speed)
  (:serialization-length
   ()
   (+
    ;; float64 _ave_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ave_speed
       (sys::poke _ave_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ave_speed
     (setq _ave_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass xu_runtime_monitoring::AverageSpeed
  :super ros::object
  :slots ())

(setf (get xu_runtime_monitoring::AverageSpeed :md5sum-) "221e08f65343de99d29b1a4f55b68d0b")
(setf (get xu_runtime_monitoring::AverageSpeed :datatype-) "xu_runtime_monitoring/AverageSpeed")
(setf (get xu_runtime_monitoring::AverageSpeed :request) xu_runtime_monitoring::AverageSpeedRequest)
(setf (get xu_runtime_monitoring::AverageSpeed :response) xu_runtime_monitoring::AverageSpeedResponse)

(defmethod xu_runtime_monitoring::AverageSpeedRequest
  (:response () (instance xu_runtime_monitoring::AverageSpeedResponse :init)))

(setf (get xu_runtime_monitoring::AverageSpeedRequest :md5sum-) "221e08f65343de99d29b1a4f55b68d0b")
(setf (get xu_runtime_monitoring::AverageSpeedRequest :datatype-) "xu_runtime_monitoring/AverageSpeedRequest")
(setf (get xu_runtime_monitoring::AverageSpeedRequest :definition-)
      "float64 distance
float64 time
---
float64 ave_speed

")

(setf (get xu_runtime_monitoring::AverageSpeedResponse :md5sum-) "221e08f65343de99d29b1a4f55b68d0b")
(setf (get xu_runtime_monitoring::AverageSpeedResponse :datatype-) "xu_runtime_monitoring/AverageSpeedResponse")
(setf (get xu_runtime_monitoring::AverageSpeedResponse :definition-)
      "float64 distance
float64 time
---
float64 ave_speed

")



(provide :xu_runtime_monitoring/AverageSpeed "221e08f65343de99d29b1a4f55b68d0b")


