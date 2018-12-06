##基础镜像
FROM nginx:1.14
COPY . /app/
RUN mv /app/dist/* /usr/share/nginx/html/ \
    && mv /app/nginx.conf /etc/nginx/nginx.conf \
    && mv /app/run.sh /usr/share/ \
    && chmod +x /usr/share/run.sh  \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && rm -rf /app
##暴露80端口
EXPOSE 80
##nginx需前端启动
CMD /usr/share/run.sh && nginx -g 'daemon off;'
