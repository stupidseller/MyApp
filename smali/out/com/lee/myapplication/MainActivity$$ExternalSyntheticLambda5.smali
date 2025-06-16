.class public final synthetic Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/MainActivity;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/MainActivity;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/lee/myapplication/MainActivity;

    iput-object p2, p0, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/lee/myapplication/MainActivity;

    iget-object v1, p0, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/lee/myapplication/MainActivity;->lambda$showCityInputDialog$4$com-lee-myapplication-MainActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
