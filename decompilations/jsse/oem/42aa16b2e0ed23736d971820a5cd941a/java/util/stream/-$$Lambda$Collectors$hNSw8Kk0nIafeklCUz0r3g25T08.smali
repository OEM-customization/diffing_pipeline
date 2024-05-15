.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$hNSw8Kk0nIafeklCUz0r3g25T08;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Function;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$hNSw8Kk0nIafeklCUz0r3g25T08;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$hNSw8Kk0nIafeklCUz0r3g25T08;->f$0:Ljava/util/function/Function;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$groupingBy$46(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
