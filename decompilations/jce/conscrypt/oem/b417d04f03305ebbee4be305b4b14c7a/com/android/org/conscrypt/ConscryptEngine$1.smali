.class Lcom/android/org/conscrypt/ConscryptEngine$1;
.super Ljava/lang/Object;
.source "ConscryptEngine.java"

# interfaces
.implements Lcom/android/org/conscrypt/ExternalSession$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptEngine;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .line 160
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine$1;->this$0:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine$1;->this$0:Lcom/android/org/conscrypt/ConscryptEngine;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngine;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;
    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->access$000(Lcom/android/org/conscrypt/ConscryptEngine;)Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0
.end method
