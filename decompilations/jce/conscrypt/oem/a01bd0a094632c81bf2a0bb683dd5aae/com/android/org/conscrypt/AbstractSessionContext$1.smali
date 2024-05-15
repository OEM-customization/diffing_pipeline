.class Lcom/android/org/conscrypt/AbstractSessionContext$1;
.super Ljava/util/LinkedHashMap;
.source "AbstractSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/AbstractSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lcom/android/org/conscrypt/ByteArray;",
        "Lcom/android/org/conscrypt/SslSessionWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/conscrypt/AbstractSessionContext;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 46
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Lcom/android/org/conscrypt/SslSessionWrapper;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/conscrypt/ByteArray;Lorg/conscrypt/SslSessionWrapper;>;"
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    invoke-static {v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->-get0(Lcom/android/org/conscrypt/AbstractSessionContext;)I

    move-result v0

    if-lez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    invoke-static {v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->-get0(Lcom/android/org/conscrypt/AbstractSessionContext;)I

    move-result v1

    if-le v0, v1, :cond_22

    .line 54
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SslSessionWrapper;

    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V

    .line 55
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_22
    return v2
.end method
