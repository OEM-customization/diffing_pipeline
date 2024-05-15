.class public final synthetic Ljava/util/function/-$$Lambda$DoublePredicate$M8n9M3rXNLuHyZ2e0F7hUxAtVx0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoublePredicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/DoublePredicate;

.field public final synthetic blacklist f$1:Ljava/util/function/DoublePredicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$DoublePredicate$M8n9M3rXNLuHyZ2e0F7hUxAtVx0;->f$0:Ljava/util/function/DoublePredicate;

    iput-object p2, p0, Ljava/util/function/-$$Lambda$DoublePredicate$M8n9M3rXNLuHyZ2e0F7hUxAtVx0;->f$1:Ljava/util/function/DoublePredicate;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(D)Z
    .registers 5

    iget-object v0, p0, Ljava/util/function/-$$Lambda$DoublePredicate$M8n9M3rXNLuHyZ2e0F7hUxAtVx0;->f$0:Ljava/util/function/DoublePredicate;

    iget-object v1, p0, Ljava/util/function/-$$Lambda$DoublePredicate$M8n9M3rXNLuHyZ2e0F7hUxAtVx0;->f$1:Ljava/util/function/DoublePredicate;

    invoke-static {v0, v1, p1, p2}, Ljava/util/function/DoublePredicate;->lambda$and$0(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;D)Z

    move-result p1

    return p1
.end method
