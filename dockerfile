FROM apache/superset
# Switching to root to install the required packages
USER root
# Install Dremio SQLAlchemy Drivers
RUN pip install sqlalchemy_dremio
USER superset
ENV SUPERSET_SECRET_KEY=XgiVZQdtlIIeqUmo8Rs2d5hjuQZrXsJh
RUN superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email example@thisemailwillneverexist.xyz \
              --password admin
RUN superset db upgrade
RUN superset load_examples