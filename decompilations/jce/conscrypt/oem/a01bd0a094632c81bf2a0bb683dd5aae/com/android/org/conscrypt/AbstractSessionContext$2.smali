.class Lcom/android/org/conscrypt/AbstractSessionContext$2;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/AbstractSessionContext;->getIds()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<[B>;"
    }
.end annotation


# instance fields
.field private next:Lcom/android/org/conscrypt/SslSessionWrapper;

.field final synthetic this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    iput-object p2, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$iter:Ljava/util/Iterator;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Lcom/android/org/conscrypt/SslSessionWrapper;

    if-eqz v1, :cond_7

    .line 88
    return v2

    .line 90
    :cond_7
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 91
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SslSessionWrapper;

    .line 92
    .local v0, "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslSessionWrapper;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Lcom/android/org/conscrypt/SslSessionWrapper;

    .line 94
    return v2

    .line 97
    .end local v0    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :cond_20
    iput-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Lcom/android/org/conscrypt/SslSessionWrapper;

    .line 98
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;->nextElement()[B

    move-result-object v0

    return-object v0
.end method

.method public nextElement()[B
    .registers 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 104
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Lcom/android/org/conscrypt/SslSessionWrapper;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SslSessionWrapper;->getId()[B

    move-result-object v0

    .line 105
    .local v0, "id":[B
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Lcom/android/org/conscrypt/SslSessionWrapper;

    .line 106
    return-object v0

    .line 108
    .end local v0    # "id":[B
    :cond_10
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
