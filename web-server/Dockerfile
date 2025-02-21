FROM httpd:latest

# Install required modules
RUN apt-get update && apt-get install -y \
    libldap2-dev \
    && rm -rf /var/lib/apt/lists/*

# Enable necessary modules
RUN sed -i 's/#LoadModule ssl_module/LoadModule ssl_module/' /usr/local/apache2/conf/httpd.conf \
    && sed -i 's/#LoadModule socache_shmcb_module/LoadModule socache_shmcb_module/' /usr/local/apache2/conf/httpd.conf \
    && sed -i 's/#LoadModule ldap_module/LoadModule ldap_module/' /usr/local/apache2/conf/httpd.conf \
    && sed -i 's/#LoadModule authnz_ldap_module/LoadModule authnz_ldap_module/' /usr/local/apache2/conf/httpd.conf

# Copy configuration files
COPY ./httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

# Copy your application files
COPY ./app /usr/local/apache2/htdocs/

# Create necessary directories
RUN mkdir -p /usr/local/apache2/htdocs/protegido

# Expose ports
EXPOSE 80 443
