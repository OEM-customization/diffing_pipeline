.class public final synthetic Ljava/nio/-$$Lambda$CharBuffer$Nm0aKlKPFJdqsfIc00Gd0NEZ8I0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/nio/CharBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/nio/CharBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/-$$Lambda$CharBuffer$Nm0aKlKPFJdqsfIc00Gd0NEZ8I0;->f$0:Ljava/nio/CharBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljava/nio/-$$Lambda$CharBuffer$Nm0aKlKPFJdqsfIc00Gd0NEZ8I0;->f$0:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->lambda$chars$0$CharBuffer()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method