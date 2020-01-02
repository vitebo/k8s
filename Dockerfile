FROM bitnami/kubectl:1.13.4-ol-7-r312

USER root

RUN wget https://gist.githubusercontent.com/viniciusjssouza/42666e6d01b28ce2deaf1bf426d36929/raw/6d911e7ce9dd8930ce44748538d7277769b43c2f/kexec -P /bin
RUN chmod +x /bin/kexec

RUN wget https://gist.githubusercontent.com/viniciusjssouza/4e0bc176cde2df8d75a94647fca46d7d/raw/ee7396277e22c65c172740c21032d65017e60d0f/klogs -P /bin
RUN chmod +x /bin/klogs

USER 1001

ENTRYPOINT "/bin/bash"
