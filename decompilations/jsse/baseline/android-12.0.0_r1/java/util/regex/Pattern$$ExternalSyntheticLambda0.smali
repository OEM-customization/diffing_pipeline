.class public final synthetic Ljava/util/regex/Pattern$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/regex/Pattern;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/regex/Pattern$$ExternalSyntheticLambda0;->f$0:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljava/util/regex/Pattern$$ExternalSyntheticLambda0;->f$0:Ljava/util/regex/Pattern;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->lambda$asPredicate$0$Pattern(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method