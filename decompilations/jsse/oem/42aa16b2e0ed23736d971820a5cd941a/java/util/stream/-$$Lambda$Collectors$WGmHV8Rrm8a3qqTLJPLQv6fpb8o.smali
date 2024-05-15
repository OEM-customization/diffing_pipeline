.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$WGmHV8Rrm8a3qqTLJPLQv6fpb8o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Supplier;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$WGmHV8Rrm8a3qqTLJPLQv6fpb8o;->f$0:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$WGmHV8Rrm8a3qqTLJPLQv6fpb8o;->f$0:Ljava/util/function/Supplier;

    invoke-static {v0, p1}, Ljava/util/stream/Collectors;->lambda$groupingByConcurrent$50(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
