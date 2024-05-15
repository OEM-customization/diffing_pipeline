.class Lsun/misc/URLClassPath$2;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
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
        "Lsun/misc/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private cache:[I

.field private index:I

.field private res:Lsun/misc/Resource;

.field final synthetic this$0:Lsun/misc/URLClassPath;

.field final synthetic val$check:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "this$0"    # Lsun/misc/URLClassPath;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    iput-object p2, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lsun/misc/URLClassPath$2;->val$check:Z

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/URLClassPath$2;->index:I

    .line 306
    iget-object v0, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    iget-object v1, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    invoke-static {v0, v1}, Lsun/misc/URLClassPath;->-wrap0(Lsun/misc/URLClassPath;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath$2;->cache:[I

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 1
    return-void
.end method

.method private next()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 310
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    if-eqz v1, :cond_6

    .line 311
    return v5

    .line 314
    :cond_6
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    iget-object v2, p0, Lsun/misc/URLClassPath$2;->cache:[I

    iget v3, p0, Lsun/misc/URLClassPath$2;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun/misc/URLClassPath$2;->index:I

    invoke-static {v1, v2, v3}, Lsun/misc/URLClassPath;->-wrap1(Lsun/misc/URLClassPath;[II)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    .local v0, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v0, :cond_25

    .line 315
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    iget-boolean v2, p0, Lsun/misc/URLClassPath$2;->val$check:Z

    invoke-virtual {v0, v1, v2}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 316
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    if-eqz v1, :cond_6

    .line 317
    return v5

    .line 320
    :cond_25
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 325
    invoke-direct {p0}, Lsun/misc/URLClassPath$2;->next()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lsun/misc/URLClassPath$2;->nextElement()Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lsun/misc/Resource;
    .registers 3

    .prologue
    .line 329
    invoke-direct {p0}, Lsun/misc/URLClassPath$2;->next()Z

    move-result v1

    if-nez v1, :cond_c

    .line 330
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 332
    :cond_c
    iget-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 333
    .local v0, "r":Lsun/misc/Resource;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 334
    return-object v0
.end method
