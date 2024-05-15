.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$BwzHl6O1mjAgxLE58ctIeFoVBAM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BinaryOperator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$BwzHl6O1mjAgxLE58ctIeFoVBAM;->f$0:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$BwzHl6O1mjAgxLE58ctIeFoVBAM;->f$0:Ljava/util/function/BinaryOperator;

    invoke-static {v0}, Ljava/util/stream/Collectors;->lambda$reducing$38(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collectors$1OptionalBox;

    move-result-object v0

    return-object v0
.end method
