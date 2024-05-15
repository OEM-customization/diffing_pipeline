.class Lcom/android/org/conscrypt/AbstractConscryptSocket$1;
.super Lcom/android/org/conscrypt/PeerInfoProvider;
.source "AbstractConscryptSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/AbstractConscryptSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/conscrypt/AbstractConscryptSocket;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;->this$0:Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .line 61
    invoke-direct {p0}, Lcom/android/org/conscrypt/PeerInfoProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method getHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;->this$0:Lcom/android/org/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHostnameOrIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;->this$0:Lcom/android/org/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPort()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;->this$0:Lcom/android/org/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getPort()I

    move-result v0

    return v0
.end method
