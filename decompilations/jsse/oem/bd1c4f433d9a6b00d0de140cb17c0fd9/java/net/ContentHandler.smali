.class public abstract Ljava/net/ContentHandler;
.super Ljava/lang/Object;
.source "ContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "urlc"    # Ljava/net/URLConnection;
    .param p2, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, p2

    if-ge v0, v2, :cond_14

    .line 104
    aget-object v2, p2, v0

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 105
    return-object v1

    .line 103
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 108
    :cond_14
    const/4 v2, 0x0

    return-object v2
.end method
