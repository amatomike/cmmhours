<?php
/**
 * Created by PhpStorm.
 * User: A
 * Date: 8/25/2016
 * Time: 8:03 PM
 */

/*******************************************************************************
 * Copyright (c) 2016. Mike Amato, All Rights Reserved.
 ******************************************************************************/

class functions
{
    public  function get_string_between($string, $start, $end){
        $string = ' ' . $string;
        $ini = strpos($string, $start);
        if ($ini == 0) return '';
        $ini += strlen($start);
        $len = strpos($string, $end, $ini) - $ini;
        return substr($string, $ini, $len);
    }
    public  function get_string_betweenAlt($string, $start, $end){
        $string = ' ' . $string;
        $ini = strpos($string, $end);
        if ($ini == 0) return '';
        $ini += strlen($end);
        $len = strpos($string, $start, $ini) - $ini;
        return substr($string, $ini, $len);
    }
   public function getBetween($content,$start,$end){
        $r = explode($start, $content);
        if (isset($r[1])){
            $r = explode($end, $r[1]);
            return $r[0];
        }
        return '';
    }
}