FROM public.ecr.aws/bitnami/wordpress-nginx:latest as app

EXPOSE 8080

COPY startup.sh /opt/copilot/scripts/startup.sh

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/opt/copilot/scripts/startup.sh"]