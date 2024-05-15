.class Lsun/misc/URLClassPath$1;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field private cache:[I

.field private index:I

.field final synthetic this$0:Lsun/misc/URLClassPath;

.field private url:Ljava/net/URL;

.field final synthetic val$check:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "this$0"    # Lsun/misc/URLClassPath;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/misc/URLClassPath$1;->this$0:Lsun/misc/URLClassPath;

    iput-object p2, p0, Lsun/misc/URLClassPath$1;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lsun/misc/URLClassPath$1;->val$check:Z

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/URLClassPath$1;->index:I

    .line 258
    iget-object v0, p0, Lsun/misc/URLClassPath$1;->this$0:Lsun/misc/URLClassPath;

    iget-object v1, p0, Lsun/misc/URLClassPath$1;->val$name:Ljava/lang/String;

    invoke-static {v0, v1}, Lsun/misc/URLClassPath;->-wrap0(Lsun/misc/URLClassPath;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath$1;->cache:[I

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 1
    return-void
.end method

.method private next()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 262
    iget-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    if-eqz v1, :cond_6

    .line 263
    return v5

    .line 266
    :cond_6
    iget-object v1, p0, Lsun/misc/URLClassPath$1;->this$0:Lsun/misc/URLClassPath;

    iget-object v2, p0, Lsun/misc/URLClassPath$1;->cache:[I

    iget v3, p0, Lsun/misc/URLClassPath$1;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun/misc/URLClassPath$1;->index:I

    invoke-static {v1, v2, v3}, Lsun/misc/URLClassPath;->-wrap1(Lsun/misc/URLClassPath;[II)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    .local v0, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v0, :cond_25

    .line 267
    iget-object v1, p0, Lsun/misc/URLClassPath$1;->val$name:Ljava/lang/String;

    iget-boolean v2, p0, Lsun/misc/URLClassPath$1;->val$check:Z

    invoke-virtual {v0, v1, v2}, Lsun/misc/URLClassPath$Loader;->findResource(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 268
    iget-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    if-eqz v1, :cond_6

    .line 269
    return v5

    .line 272
    :cond_25
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 277
    invoke-direct {p0}, Lsun/misc/URLClassPath$1;->next()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lsun/misc/URLClassPath$1;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .registers 3

    .prologue
    .line 281
    invoke-direct {p0}, Lsun/misc/URLClassPath$1;->next()Z

    move-result v1

    if-nez v1, :cond_c

    .line 282
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 284
    :cond_c
    iget-object v0, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 285
    .local v0, "u":Ljava/net/URL;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 286
    return-object v0
.end method
