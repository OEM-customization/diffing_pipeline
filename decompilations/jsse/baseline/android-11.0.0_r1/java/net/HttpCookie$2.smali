.class Ljava/net/HttpCookie$2;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/net/HttpCookie$CookieAttributeAssignor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/HttpCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .line 918
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 919
    invoke-virtual {p1, p3}, Ljava/net/HttpCookie;->setCommentURL(Ljava/lang/String;)V

    .line 920
    :cond_9
    return-void
.end method