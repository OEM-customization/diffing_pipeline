.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$pzPeDl3rCgtNVSeZPHZk5f2se60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/CharSequence;

.field public final synthetic blacklist f$1:Ljava/lang/CharSequence;

.field public final synthetic blacklist f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$pzPeDl3rCgtNVSeZPHZk5f2se60;->f$0:Ljava/lang/CharSequence;

    iput-object p2, p0, Ljava/util/stream/-$$Lambda$Collectors$pzPeDl3rCgtNVSeZPHZk5f2se60;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Ljava/util/stream/-$$Lambda$Collectors$pzPeDl3rCgtNVSeZPHZk5f2se60;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$pzPeDl3rCgtNVSeZPHZk5f2se60;->f$0:Ljava/lang/CharSequence;

    iget-object v1, p0, Ljava/util/stream/-$$Lambda$Collectors$pzPeDl3rCgtNVSeZPHZk5f2se60;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Ljava/util/stream/-$$Lambda$Collectors$pzPeDl3rCgtNVSeZPHZk5f2se60;->f$2:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Ljava/util/stream/Collectors;->lambda$joining$6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    return-object v0
.end method
