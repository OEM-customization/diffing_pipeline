.class Ljava/util/logging/FileHandler$1;
.super Ljava/lang/Object;
.source "FileHandler.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/FileHandler;->publish(Ljava/util/logging/LogRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/FileHandler;


# direct methods
.method constructor <init>(Ljava/util/logging/FileHandler;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/logging/FileHandler;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/logging/FileHandler$1;->this$0:Ljava/util/logging/FileHandler;

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 696
    iget-object v0, p0, Ljava/util/logging/FileHandler$1;->this$0:Ljava/util/logging/FileHandler;

    invoke-static {v0}, Ljava/util/logging/FileHandler;->-wrap0(Ljava/util/logging/FileHandler;)V

    .line 697
    const/4 v0, 0x0

    return-object v0
.end method
