.class public final synthetic Ljava/util/function/-$$Lambda$Predicate$L51YwfosqnYQ8QKStSMYaDgSslA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$Predicate$L51YwfosqnYQ8QKStSMYaDgSslA;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljava/util/function/-$$Lambda$Predicate$L51YwfosqnYQ8QKStSMYaDgSslA;->f$0:Ljava/util/function/Predicate;

    invoke-static {v0, p1}, Ljava/util/function/Predicate;->lambda$negate$1(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method