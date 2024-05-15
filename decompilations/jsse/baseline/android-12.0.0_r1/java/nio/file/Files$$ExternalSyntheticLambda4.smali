.class public final synthetic Ljava/nio/file/Files$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/file/Files$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljava/nio/file/Files$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/BiPredicate;

    check-cast p1, Ljava/nio/file/FileTreeWalker$Event;

    invoke-static {v0, p1}, Ljava/nio/file/Files;->lambda$find$2(Ljava/util/function/BiPredicate;Ljava/nio/file/FileTreeWalker$Event;)Z

    move-result p1

    return p1
.end method
