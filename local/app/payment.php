<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class payment extends Model
{
    protected $table = "payments";
    protected $fillable = [
       'user_id',
       'payment_type',
       'bkash_no',
       'bikash_tran_no',
       'bikash_amount',
       'bank_name',
       'bank_branch_name',
       'payment_slip_no',
       'slip_image',
       'amount',
       'date',
       'status'
    ];

  public function pay_use_info(){
  	return $this->belongsTo('App\teacher_profile', 'user_id', 'user_id');
  }
}
