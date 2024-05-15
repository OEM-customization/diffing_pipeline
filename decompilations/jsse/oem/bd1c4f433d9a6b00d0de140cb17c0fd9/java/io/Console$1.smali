.class Ljava/io/Console$1;
.super Ljava/io/PrintWriter;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/Console;


# direct methods
.method constructor <init>(Ljava/io/Console;Ljava/io/Writer;Z)V
    .registers 4
    .param p1, "this$0"    # Ljava/io/Console;
    .param p2, "$anonymous0"    # Ljava/io/Writer;
    .param p3, "$anonymous1"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Ljava/io/Console$1;->this$0:Ljava/io/Console;

    .line 554
    invoke-direct {p0, p2, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 554
    return-void
.end method
