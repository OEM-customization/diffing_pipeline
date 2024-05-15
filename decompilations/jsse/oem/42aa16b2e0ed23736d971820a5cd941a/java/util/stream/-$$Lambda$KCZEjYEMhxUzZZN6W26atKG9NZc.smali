.class public final synthetic Ljava/util/stream/-$$Lambda$KCZEjYEMhxUzZZN6W26atKG9NZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$KCZEjYEMhxUzZZN6W26atKG9NZc;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$KCZEjYEMhxUzZZN6W26atKG9NZc;->f$0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
