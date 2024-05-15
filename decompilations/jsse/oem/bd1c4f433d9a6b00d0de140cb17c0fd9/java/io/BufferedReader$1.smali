.class Ljava/io/BufferedReader$1;
.super Ljava/lang/Object;
.source "BufferedReader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field nextLine:Ljava/lang/String;

.field final synthetic this$0:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Ljava/io/BufferedReader;)V
    .registers 3
    .param p1, "this$0"    # Ljava/io/BufferedReader;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/io/BufferedReader$1;->this$0:Ljava/io/BufferedReader;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 578
    iget-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 579
    return v1

    .line 582
    :cond_6
    :try_start_6
    iget-object v2, p0, Ljava/io/BufferedReader$1;->this$0:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 583
    iget-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_15

    if-eqz v2, :cond_13

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12

    .line 584
    :catch_15
    move-exception v0

    .line 585
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 590
    invoke-virtual {p0}, Ljava/io/BufferedReader$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 592
    iget-object v1, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-virtual {p0}, Ljava/io/BufferedReader$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 593
    :cond_b
    iget-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 594
    .local v0, "line":Ljava/lang/String;
    iput-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 595
    return-object v0

    .line 597
    .end local v0    # "line":Ljava/lang/String;
    :cond_10
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
