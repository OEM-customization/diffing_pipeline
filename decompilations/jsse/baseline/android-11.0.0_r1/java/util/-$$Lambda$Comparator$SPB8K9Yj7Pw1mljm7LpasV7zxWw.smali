.class public final synthetic Ljava/util/-$$Lambda$Comparator$SPB8K9Yj7Pw1mljm7LpasV7zxWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Function;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$$Lambda$Comparator$SPB8K9Yj7Pw1mljm7LpasV7zxWw;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Ljava/util/-$$Lambda$Comparator$SPB8K9Yj7Pw1mljm7LpasV7zxWw;->f$0:Ljava/util/function/Function;

    invoke-static {v0, p1, p2}, Ljava/util/Comparator;->lambda$comparing$77a9974f$1(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
