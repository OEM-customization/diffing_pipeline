.class final Ljava/net/HttpCookie$11;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/net/HttpCookie$CookieAttributeAssignor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/HttpCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    .line 1006
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_28

    .line 1012
    invoke-static {p3}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1013
    .local v0, "date":Ljava/util/Date;
    const-wide/16 v2, 0x0

    .line 1014
    .local v2, "maxAgeInSeconds":J
    if-eqz v0, :cond_25

    .line 1015
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {p1}, Ljava/net/HttpCookie;->-get0(Ljava/net/HttpCookie;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 1017
    cmp-long v1, v2, v8

    if-nez v1, :cond_25

    .line 1018
    const-wide/16 v2, 0x0

    .line 1021
    :cond_25
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 1023
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "maxAgeInSeconds":J
    :cond_28
    return-void
.end method
