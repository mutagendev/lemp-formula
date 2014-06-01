================
LEMP-formula
================

A saltstack formula for a default LEMP stack.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/topics/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``lemp.mysql``
--------------

Installs `mysql` server and client, configures the server with defined root
password and sets the server to start on boot. Also, starts the `mysql` server
service.

``lemp.nginx``
------------------

Installs `nginx` webserver, enables service to start on boot and starts the
service.

``lemp.php``
------------

Installs `php5-fpm`, enables the service to start on boot, and starts the
service. Requires ``lemp.nginx``.
