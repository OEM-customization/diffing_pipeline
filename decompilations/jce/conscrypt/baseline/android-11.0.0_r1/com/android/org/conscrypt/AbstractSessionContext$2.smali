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
        "Ljava/util/Enumeration<",
        "[B>;"
    }
.end annotation


# instance fields
.field private blacklist next:Lcom/android/org/conscrypt/NativeSslSession;

.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

.field final synthetic blacklist val$iter:Ljava/util/Iterator;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 83
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    iput-object p2, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasMoreElements()Z
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Lcom/android/org/conscrypt/NativeSslSession;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 89
    return v1

    .line 91
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/NativeSslSession;

    .line 93
    .local v0, "session":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 94
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Lcom/android/org/conscrypt/NativeSslSession;

    .line 95
    return v1

    .line 97
    .end local v0    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    :cond_1f
    goto :goto_6

    .line 98
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Lcom/android/org/conscrypt/NativeSslSession;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;->nextElement()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()[B
    .registers 3

    .line 104
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 105
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Lcom/android/org/conscrypt/NativeSslSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession;->getId()[B

    move-result-object v0

    .line 106
    .local v0, "id":[B
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Lcom/android/org/conscrypt/NativeSslSession;

    .line 107
    return-object v0

    .line 109
    .end local v0    # "id":[B
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
