;; Auto-generated. Do not edit!


(when (boundp 'xu_runtime_monitoring::speed)
  (if (not (find-package "XU_RUNTIME_MONITORING"))
    (make-package "XU_RUNTIME_MONITORING"))
  (shadow 'speed (find-package "XU_RUNTIME_MONITORING")))
(unless (find-package "XU_RUNTIME_MONITORING::SPEED")
  (make-package "XU_RUNTIME_MONITORING::SPEED"))

(in-package "ROS")
;;//! \htmlinclude speed.msg.html


(defclass xu_runtime_monitoring::speed
  :super ros::object
  :slots (_ave_x_speed ))

(defmethod xu_runtime_monitoring::speed
  (:init
   (&key
    ((:ave_x_speed __ave_x_speed) 0.0)
    )
   (send-super :init)
   (setq _ave_x_speed (float __ave_x_speed))
   self)
  (:ave_x_speed
   (&optional __ave_x_speed)
   (if __ave_x_speed (setq _ave_x_speed __ave_x_speed)) _ave_x_speed)
  (:serialization-length
   ()
   (+
    ;; float64 _ave_x_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ave_x_speed
       (sys::poke _ave_x_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ave_x_speed
     (setq _ave_x_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get xu_runtime_monitoring::speed :md5sum-) "69785c2d3515ba7cc203e7b353ad6156")
(setf (get xu_runtime_monitoring::speed :datatype-) "xu_runtime_monitoring/speed")
(setf (get xu_runtime_monitoring::speed :definition-)
      "float64 ave_x_speed 

")



(provide :xu_runtime_monitoring/speed "69785c2d3515ba7cc203e7b353ad6156")


