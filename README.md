# TGAlertControllerExtension

A highly scalable, protocol-oriented, approach to presenting a UIAlertController.


# Implementation

From your view controller class, call:

self.present(UIAlertController(configuration:)animated:completion:)


# Architecture

@extension UIAlertController - initializes a UIAlertController using a BCAlertConfiguration case. Reduces view controller logic to one line of code.


@enum BCAlertConfiguration - returns a computed BCAlertDataStore property for the case specified by the UIAlertController initializer. Also adds UIAlertActions required for the alert.


@struct BCAlertDataStore - returns data that is required for each configuration case.


# Scalability

To add a new alert:

1. Add a key value pair to the data store.

2. Add a case to configuration enum.

3. Invoke the alert controller extension with the new configuration case where the alert will be presented.


# TODO

Refactor the logic for UIAlertAction completion handler. There is definitely a way to make this cleaner.
