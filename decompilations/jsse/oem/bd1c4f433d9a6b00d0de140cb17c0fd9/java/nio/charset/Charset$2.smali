.class final Ljava/nio/charset/Charset$2;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$charsetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Ljava/nio/charset/Charset$2;->val$charsetName:Ljava/lang/String;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 428
    invoke-virtual {p0}, Ljava/nio/charset/Charset$2;->run()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/nio/charset/Charset;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 429
    invoke-static {}, Ljava/nio/charset/Charset;->-wrap0()Ljava/util/Iterator;

    move-result-object v2

    .line 430
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/spi/CharsetProvider;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 429
    if-eqz v3, :cond_1a

    .line 431
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/spi/CharsetProvider;

    .line 432
    .local v0, "cp":Ljava/nio/charset/spi/CharsetProvider;
    iget-object v3, p0, Ljava/nio/charset/Charset$2;->val$charsetName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/nio/charset/spi/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 433
    .local v1, "cs":Ljava/nio/charset/Charset;
    if-eqz v1, :cond_5

    .line 434
    return-object v1

    .line 436
    .end local v0    # "cp":Ljava/nio/charset/spi/CharsetProvider;
    .end local v1    # "cs":Ljava/nio/charset/Charset;
    :cond_1a
    return-object v4
.end method
