#!/usr/bin/env python
import os
import pika

user = os.environ['RABBITMQ_DEFAULT_USER']
token = os.environ['RABBITMQ_DEFAULT_PASS']


credentials = pika.PlainCredentials(user, token)
parameters = pika.ConnectionParameters('slab_rabbit',
                                   5672,
                                   '/',
                                   credentials)

connection = pika.BlockingConnection(parameters)

channel = connection.channel()

channel.queue_declare(queue='hello')

channel.basic_publish(exchange='',
                  routing_key='hello',
                  body='Hello W0rld!')
print(" [x] Sent 'Hello World!'")
connection.close()
