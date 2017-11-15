FROM rgeada/tf:stock

MAINTAINER Rob Geada <rgeada@redhat.com>

USER root

LABEL io.k8s.description="S2I builder for Fast-Style Evaluation." \
      io.k8s.display-name="Fast-Style Evaluator" \
      io.openshift.expose-services="8888:http" \
      io.openshift.tags="builder,python,fast-style" \
	  io.openshift.s2i.scripts-url="image:///opt/app-root/s2i/bin"


COPY s2i /opt/app-root/s2i
COPY model model
COPY content content

CMD [ "/opt/app-root/s2i/bin/run" ]