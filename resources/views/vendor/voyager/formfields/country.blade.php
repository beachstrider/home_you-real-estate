@php
if(isset($dataTypeContent->{$row->field})){
$con = old($row->field, $dataTypeContent->{$row->field});
}
else{
$con = old($row->field);
}
@endphp

<select class="form-control" name="{{ $row->field }}" data-name="{{ $row->display_name }}">
@foreach ($countries as $country)
    <option value="{{ $country->name }}" 
    @if($con == $country->name)
        {{ "selected" }}
    @endif
    >{{ $country->name }}</option>
@endforeach
</select>
    