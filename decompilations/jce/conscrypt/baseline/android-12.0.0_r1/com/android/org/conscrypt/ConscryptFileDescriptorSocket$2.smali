.class Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$2;
.super Ljava/lang/Object;
.source "ConscryptFileDescriptorSocket.java"

# interfaces
.implements Lcom/android/org/conscrypt/ExternalSession$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 732
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$2;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 2

    .line 735
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$2;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # invokes: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$400(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0
.end method
