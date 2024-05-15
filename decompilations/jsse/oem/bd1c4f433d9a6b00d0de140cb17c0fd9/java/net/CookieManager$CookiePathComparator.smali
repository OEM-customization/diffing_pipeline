.class Ljava/net/CookieManager$CookiePathComparator;
.super Ljava/lang/Object;
.source "CookieManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/CookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CookiePathComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/net/HttpCookie;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 450
    check-cast p1, Ljava/net/HttpCookie;

    check-cast p2, Ljava/net/HttpCookie;

    invoke-virtual {p0, p1, p2}, Ljava/net/CookieManager$CookiePathComparator;->compare(Ljava/net/HttpCookie;Ljava/net/HttpCookie;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/net/HttpCookie;Ljava/net/HttpCookie;)I
    .registers 10
    .param p1, "c1"    # Ljava/net/HttpCookie;
    .param p2, "c2"    # Ljava/net/HttpCookie;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 451
    if-ne p1, p2, :cond_6

    return v4

    .line 452
    :cond_6
    if-nez p1, :cond_9

    return v5

    .line 453
    :cond_9
    if-nez p2, :cond_c

    return v6

    .line 456
    :cond_c
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    return v4

    .line 458
    :cond_1b
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/CookieManager;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "c1Path":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/CookieManager;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "c2Path":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 463
    return v5

    .line 464
    :cond_32
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 465
    return v6

    .line 467
    :cond_39
    return v4
.end method
